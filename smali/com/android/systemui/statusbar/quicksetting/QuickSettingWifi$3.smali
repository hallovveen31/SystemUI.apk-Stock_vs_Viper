.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;
.super Landroid/os/AsyncTask;
.source "QuickSettingWifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->toggleWifiState()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->performToggleWifiState()Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->wifiDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f07002b

    if-ne v0, v2, :cond_2

    const v0, 0x7f02017d

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->resetStateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "QuickSettingWifi"

    const-string v1, "!!!!!toggleWifiState.unlock(airplaneModeOn):restore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f020178

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
