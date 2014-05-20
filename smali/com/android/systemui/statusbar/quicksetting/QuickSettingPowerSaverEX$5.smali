.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$5;
.super Ljava/lang/Object;
.source "QuickSettingPowerSaverEX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->updateDemoFLOstate()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaverEX;)V

    return-void
.end method
