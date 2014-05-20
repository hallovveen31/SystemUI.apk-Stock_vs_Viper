.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$3;
.super Landroid/database/ContentObserver;
.source "QuickSettingGPS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    const-string v0, "QuickSettingGPS"

    const-string v1, "gpsObserver:onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->getActualState()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;)Z

    move-result v1

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->updateGpsStats(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingGPS;Z)V

    return-void
.end method
