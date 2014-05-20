.class public Lcom/android/systemui/statusbar/preference/BT;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "BT.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.AutoRotateController"


# instance fields
.field private mBluetoothManager:Landroid/bluetooth/BluetoothAdapter;

.field private mBt:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    new-instance v0, Lcom/android/systemui/statusbar/preference/BT$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/BT$1;-><init>(Lcom/android/systemui/statusbar/preference/BT;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/BT$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/BT$2;-><init>(Lcom/android/systemui/statusbar/preference/BT;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/BT;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/BT;->getBluetooth()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mBt:Z

    new-instance v0, Lcom/android/systemui/statusbar/preference/BT$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/BT$3;-><init>(Lcom/android/systemui/statusbar/preference/BT;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mBt:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/BT;->updateResources()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/BT;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/preference/BT;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/BT;->handleBt(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/preference/BT;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/BT;->handleBtStateChanged(I)V

    return-void
.end method

.method private getBluetooth()Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mBluetoothManager:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mBluetoothManager:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mBluetoothManager:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleBt(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/BT;->mBt:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mBluetoothManager:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mBluetoothManager:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private handleBtStateChanged(I)V
    .locals 5

    const v4, 0x7f0a0154

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/BT;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/preference/BT;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/BT;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/BT;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/BT;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/BT;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/BT;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private init()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mBluetoothManager:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preference/BT;->handleBtStateChanged(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0a013d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f0a0154

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f02052b

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/BT;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mBluetoothManager:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mBluetoothManager:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mBluetoothManager:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/BT;->handleBtStateChanged(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public toggleSettings()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/preference/BT;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a013d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
