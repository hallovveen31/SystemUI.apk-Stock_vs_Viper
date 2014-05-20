.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;
.super Landroid/os/AsyncTask;
.source "QuickSettingBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->toggleNextState()V
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->isAirplaneToggleable:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v0, v3

    :goto_0
    if-ne v0, v3, :cond_1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v2, v3

    :goto_1
    return-object v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-string v4, "QuickSettingBluetooth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleState.currentState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nextState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :goto_2
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->refreshView()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Ljava/lang/String;

    const-string v0, "QuickSettingBluetooth"

    const-string v1, "!!!!!toggleBluetoothState.unlock(airplaneModeOn):restore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
