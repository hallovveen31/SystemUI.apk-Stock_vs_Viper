.class public Lcom/android/systemui/statusbar/policy/BluetoothController;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothController.java"


# instance fields
.field private mBondedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z


# direct methods
.method private fireCallbacks()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;->onBluetoothStateChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleAdapterStateChange(I)V
    .locals 1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBondedBluetoothDevices()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBondedDevices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBondedDevices:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleAdapterStateChange(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->fireCallbacks()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->updateBondedBluetoothDevices()V

    return-void
.end method
