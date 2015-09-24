using System;
using System.ComponentModel;


namespace EHealth.ClientApplication.ViewModels
{


    /// <summary>
    /// 
    /// </summary>
    public class MeasureWeightViewModel : INotifyPropertyChanged
    {


        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;

        protected void SendPropertyChanged(string propertyName)
        {
            if (this.PropertyChanged != null)
                this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }

        #endregion

        aladdinService.Task ActiveTask;
        string _WeightText = "";

        public string WeightText
        {
            get { return _WeightText; }
            set
            {
                _WeightText = value;
                this.SendPropertyChanged("WeightText");
                this.SendPropertyChanged("Weight");
            }
        }

        public double? Weight
        {
            get
            {
                double result;
                bool ok = double.TryParse(this.WeightText, out result);
                if (ok)
                    return result;
                return null;
            }
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="activeTask"></param>
        public MeasureWeightViewModel(aladdinService.Task activeTask)
        {
            this.ActiveTask = activeTask;
        }


        /// <summary>
        /// 
        /// </summary>
        internal void SendMeasurements()
        {
            if (this.Weight.HasValue)
            {
                aladdinService.StorageComponentImplService sc = new aladdinService.StorageComponentImplService();
                aladdinService.Measurement Measurement = new aladdinService.Measurement();
                Measurement.DateTime = App.getTaskById(this.ActiveTask.ID).DateTimeAssigned; // System.DateTime.Now;
                Measurement.TaskID = this.ActiveTask.ID;

                aladdinService.SystemParameter measurementType = new aladdinService.SystemParameter();
                measurementType.Code = Convert.ToString((int)Config.MeasurementTypeEnum.Weight);
                measurementType.Description = "Weight";
                Measurement.Type = measurementType;

                Measurement.Value = this.Weight.Value;
                Measurement.Units = "Kg";

                Measurement.LowerLimitSpecified = false;
                Measurement.UpperLimitSpecified = false;

                aladdinService.Measurement[] data = new aladdinService.Measurement[] { Measurement };
                aladdinService.OperationResult res = sc.StoreMeasurements(data, App.CurrentUserID);
                if (res.Status == 1)
                {
                    aladdinService.OperationResult taskChangeStatus = sc.ChangeTaskStatus(Convert.ToInt32(this.ActiveTask.ID), (int)Config.TaskStatusEnum.Completed, App.CurrentUserID);
                }

                AppCommands.MoveToPageCommand.Execute("MyTasksPage", null);
            }
            
        }


        // Weight limits: 30-180 kg
        internal bool CanSendMeasurements()
        {
            return (this.Weight >= 30 && this.Weight <= 180);
        }


    }


}
