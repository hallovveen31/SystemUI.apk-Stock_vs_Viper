.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$2;
.super Landroid/database/ContentObserver;
.source "QuickSettingRoaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->getRoamingState()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)I

    move-result v1

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->updateRoamingStats(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;I)V

    return-void
.end method
