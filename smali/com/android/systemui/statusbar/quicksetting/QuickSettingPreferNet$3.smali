.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$3;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingPreferNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const v3, 0xc351

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
