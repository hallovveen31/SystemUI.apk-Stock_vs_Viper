.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$4;
.super Landroid/database/ContentObserver;
.source "QuickSettingAirplane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->updateDemoFLOstate()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAirplane;)V

    return-void
.end method
