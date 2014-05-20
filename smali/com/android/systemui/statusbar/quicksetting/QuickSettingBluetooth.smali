.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingBluetooth.java"


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private handler:Landroid/os/Handler;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private isAirplaneToggleable:Z

.field final receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegister:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->isAirplaneToggleable:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->receiverRegister:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->receiver:Landroid/content/BroadcastReceiver;

    const-string v0, "bluetooth"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->toggleNextState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->isAirplaneToggleable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->refreshView()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->connectToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private connectToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "STATE_NONE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STATE_CONNECTED"

    goto :goto_0

    :pswitch_1
    const-string v0, "STATE_CONNECTING"

    goto :goto_0

    :pswitch_2
    const-string v0, "STATE_DISCONNECTED"

    goto :goto_0

    :pswitch_3
    const-string v0, "STATE_DISCONNECTING"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f020120

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00c1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isBluetoothRestrict()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->isSprintBrand:Z

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isBluetoothRestriceted()Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private refreshView()Ljava/lang/String;
    .locals 7

    const v6, 0x7f07002b

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v4, :cond_1

    :cond_0
    const-string v2, ""

    :goto_0
    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    move v1, v2

    :goto_1
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-ne v1, v2, :cond_5

    move v4, v2

    :goto_2
    invoke-virtual {v5, v4, v2}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    if-ne v1, v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    move v0, v2

    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_3
    if-ne v1, v2, :cond_8

    if-ne v0, v2, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v6, :cond_7

    const v2, 0x7f02011f

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_3

    :cond_7
    const v2, 0x7f02011e

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v6, :cond_9

    const v2, 0x7f020115

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_9
    const v2, 0x7f02010d

    goto :goto_6
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 9

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    const v7, 0x7f07002b

    if-eq v4, v7, :cond_3

    const v4, 0x7f02010c

    :goto_1
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->receiverRegister:Z

    if-nez v4, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->receiverRegister:Z

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->updateAirplaneTogglableConfig()V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->refreshView()Ljava/lang/String;

    move-result-object v1

    const-string v4, "QuickSettingBluetooth"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setContentView:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    :cond_3
    const v4, 0x7f02011d

    goto :goto_1
.end method

.method private stateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "STATE_NONE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STATE_ON"

    goto :goto_0

    :pswitch_1
    const-string v0, "STATE_OFF"

    goto :goto_0

    :pswitch_2
    const-string v0, "STATE_TURNING_ON"

    goto :goto_0

    :pswitch_3
    const-string v0, "STATE_TURNING_OFF"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private toggleNextState()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "QuickSettingBluetooth"

    const-string v1, "toggleBluetoothState.skip:disable!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->updateAirplaneTogglableConfig()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->isAirplaneToggleable:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    if-ne v0, v1, :cond_3

    const-string v0, "QuickSettingBluetooth"

    const-string v1, "toggleBluetoothState.skip:airplane!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->isBluetoothRestrict()Z

    move-result v0

    const-string v3, "QuickSettingBluetooth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggleBluetoothState.restrict:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->isSprintBrand:Z

    if-ne v0, v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/quicksetting/QuickRestrictActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10c0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "title"

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_5
    const-string v0, "QuickSettingBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleBluetoothState.lock:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private updateAirplaneTogglableConfig()V
    .locals 4

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->isAirplaneToggleable:Z

    :goto_0
    const-string v1, "QuickSettingBluetooth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "airplaneToggleable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->isAirplaneToggleable:Z

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 8

    const v7, 0x7f07002e

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v3, 0x7f070027

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v4, 0x7f070028

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v2

    if-ne v2, v5, :cond_6

    new-instance v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->onLocaleChanged()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eqz v0, :cond_4

    move v3, v5

    :goto_0
    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    :cond_2
    if-eqz v1, :cond_3

    const v3, 0x7f07002d

    invoke-virtual {p0, v3, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setTouchDelegate(II)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v3, v6

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v3, "QuickSettingBluetooth"

    const-string v4, "!!!!!initialize set content fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->receiverRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->receiverRegister:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->bluetoothDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070029

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBluetooth;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    const v3, 0x7f07002e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v3, 0x7f0a00de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
