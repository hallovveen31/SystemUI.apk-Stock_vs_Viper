.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingMiniLite.java"


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private bluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private btListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private handler:Landroid/os/Handler;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private miniCount:I

.field receiverRegister:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->handler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->btListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iput v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->miniCount:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->receiverRegister:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "mini_lite"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->miniCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->updateMiniLiteState()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->profileToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f02012c

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00c3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private profileToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "GATT"

    goto :goto_0

    :pswitch_2
    const-string v0, "A2DP"

    goto :goto_0

    :pswitch_3
    const-string v0, "HEALTH"

    goto :goto_0

    :pswitch_4
    const-string v0, "HEADSET"

    goto :goto_0

    :pswitch_5
    const-string v0, "GATT_SERVER"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->btListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v4, v6, v7, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->receiverRegister:Z

    if-nez v4, :cond_3

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->receiverRegister:Z

    :cond_3
    const-string v4, "QuickSettingMiniLite"

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

    const-string v7, " bluetoothRegister:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0
.end method

.method private setMiniLiteCount(I)V
    .locals 4

    const v3, 0x7f02012a

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->miniCount:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    goto :goto_0

    :cond_3
    if-le p1, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v1, 0x7f02012b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    goto :goto_0

    :cond_4
    const-string v0, "QuickSettingMiniLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!invalid device count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMiniLiteState()V
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v7, :cond_2

    const-string v7, "QuickSettingMiniLite"

    const-string v8, "updateLiteState:invalid bluetooth headset!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->setMiniLiteCount(I)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v1, v6

    :goto_1
    if-nez v1, :cond_4

    const-string v7, "QuickSettingMiniLite"

    const-string v8, "updateLiteState:no connect device!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->setMiniLiteCount(I)V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    const-string v6, "QuickSettingMiniLite"

    const-string v7, "----------------------------------------------------"

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v6, "HTC Mini"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "HTC mini"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    :cond_7
    const-string v6, "QuickSettingMiniLite"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v6, "QuickSettingMiniLite"

    const-string v7, "----------------------------------------------------"

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->setMiniLiteCount(I)V

    const-string v6, "QuickSettingMiniLite"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateLiteState.device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " miniCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->onLocaleChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v1, "QuickSettingMiniLite"

    const-string v2, "!!!!!initialize set content fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->handler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const-string v0, "QuickSettingMiniLite"

    const-string v1, "detached.close profile proxy!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->receiverRegister:Z

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->receiverRegister:Z

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 3

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMiniLite;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method
