.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$3;
.super Ljava/lang/Object;
.source "QuickSettingMiniLite.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    const/16 v3, 0x7d1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$302(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    :cond_0
    const-string v0, "QuickSettingMiniLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btListener.connect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->profileToString(I)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 4

    const/16 v3, 0x7d1

    const-string v0, "QuickSettingMiniLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btListener.disconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->profileToString(I)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
