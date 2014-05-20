.class Lcom/android/systemui/usb/StorageNotification$1;
.super Landroid/os/Handler;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/systemui/usb/StorageNotification;->access$000(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;

    move-result-object v3

    iget v0, v3, Landroid/app/Notification;->icon:I

    const/4 v1, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x15668

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v3, v3, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/systemui/usb/StorageNotification;->access$000(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v0, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0

    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v7, :cond_6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/systemui/usb/StorageNotification;->access$100()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v4, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Showing toast: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v4, v3, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/systemui/usb/StorageNotification;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Showing toast by notification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/systemui/usb/StorageNotification;->access$000(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v3, v3, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/android/systemui/usb/StorageNotification;->access$000(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    goto :goto_1

    :cond_6
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v3}, Lcom/android/systemui/usb/StorageNotification;->access$200(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->unlockVoldWakeLock()V

    invoke-static {}, Lcom/android/systemui/usb/StorageNotification;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "StorageNotification"

    const-string v4, "unlockVoldWakeLock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15666
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
