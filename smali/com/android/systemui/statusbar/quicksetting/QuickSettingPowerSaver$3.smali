.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$3;
.super Landroid/database/ContentObserver;
.source "QuickSettingPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->updatePowerSaverState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPowerSaver;)V

    return-void
.end method
