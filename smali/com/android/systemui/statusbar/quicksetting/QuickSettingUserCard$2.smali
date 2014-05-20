.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$2;
.super Ljava/lang/Object;
.source "QuickSettingUserCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->userInfoTask:Landroid/os/AsyncTask;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/os/AsyncTask;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->userInfoTask:Landroid/os/AsyncTask;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/os/AsyncTask;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    const/4 v3, 0x0

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->userInfoTask:Landroid/os/AsyncTask;
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$202(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->queryForUserInformation()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V

    const-string v2, "QuickSettingUserCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadUserInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userInfoTask:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->userInfoTask:Landroid/os/AsyncTask;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/os/AsyncTask;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
