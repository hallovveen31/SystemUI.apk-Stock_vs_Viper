.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2$1;
.super Landroid/os/AsyncTask;
.source "QuickSettingWifiHotspot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    const-string v1, "com.htc.WifiRouter"

    const-string v2, "com.htc.WifiRouter.WifiRouter"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
