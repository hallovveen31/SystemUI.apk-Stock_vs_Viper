.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$4;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const v3, 0xc351

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    const-string v1, "QuickSettingPreferNet"

    const-string v2, "onChange:EXT_MOBILE_DATA_PHONE_TYPE"

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
