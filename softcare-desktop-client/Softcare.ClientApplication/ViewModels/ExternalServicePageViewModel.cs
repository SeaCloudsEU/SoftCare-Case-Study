using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;

namespace EHealth.ClientApplication.ViewModels
{
    public class ExternalServicePageViewModel
    {
        aladdinService.Task ActiveTask;

        public string Url { get; set; }

        public string Text { get; set; }

        public ExternalServicePageViewModel(aladdinService.Task activeTask)
        {
            this.ActiveTask = activeTask;
            if (this.ActiveTask != null && this.ActiveTask.URL != null)
            {
                this.Url = this.ActiveTask.URL;
                this.Text = this.ActiveTask.Text;
                using (aladdinService.StorageComponentImplService sc = new aladdinService.StorageComponentImplService())
                {
                    aladdinService.OperationResult taskChangeStatus = sc.ChangeTaskStatus(Convert.ToInt32(this.ActiveTask.ID), (int)Config.TaskStatusEnum.Completed, App.CurrentUserID);
                }
            }
        }
    }
}
