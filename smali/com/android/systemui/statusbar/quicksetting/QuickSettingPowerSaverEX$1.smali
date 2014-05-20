.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$1;
.super Ljava/lang/Object;
.source "QuickSettingPowerSaverEX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->toggleEXPSstate()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->resetLockState:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->resetLockState:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
