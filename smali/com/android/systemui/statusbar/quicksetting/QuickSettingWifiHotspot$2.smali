.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;
.super Ljava/lang/Object;
.source "QuickSettingWifiHotspot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    const-string v1, "QuickSettingWifiHotspot"

    const-string v2, "click:launch more shortcut item!"

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->Log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->disableQuickTipsFlag()V

    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    return-void
.end method
