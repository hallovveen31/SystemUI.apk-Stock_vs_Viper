.class public Lcom/android/systemui/statusbar/preference/HotSpot;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "HotSpot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HotSpotStatusBarPreference"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDontRemind:Landroid/widget/CheckBox;

.field private mEnableMhs:Z

.field private mLayoutFactory:Landroid/view/LayoutInflater;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMhsIntentFilter:Landroid/content/IntentFilter;

.field private final mMhsReceiver:Landroid/content/BroadcastReceiver;

.field private mMhsStatus:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private remindDialog:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/HotSpot$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/HotSpot$1;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/preference/HotSpot$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/HotSpot$2;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/preference/HotSpot$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/HotSpot$3;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/HotSpot$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/HotSpot$7;-><init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/HotSpot;->init()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mLayoutFactory:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/HotSpot;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/HotSpot;->checkMHSStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/HotSpot;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/HotSpot;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/preference/HotSpot;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/HotSpot;->setHotspotStatus()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/preference/HotSpot;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mDontRemind:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/HotSpot;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/HotSpot;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/preference/HotSpot;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mEnableMhs:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/preference/HotSpot;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/HotSpot;->handleMhs(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/HotSpot;->showRemindDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/preference/HotSpot;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->remindDialog:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/preference/HotSpot;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->remindDialog:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/preference/HotSpot;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/HotSpot;->isMLEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/preference/HotSpot;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/HotSpot;->switchHotspotOnOff(Z)V

    return-void
.end method

.method private checkMHSStatus()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->checkWifiApEnabledMhsRequest()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    iput v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mMhsStatus:I

    const-string v2, "HotSpotStatusBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mhs status="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HotSpotStatusBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wifiAp status="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preference/HotSpot;->handleWifiApStateChanged(I)V

    return-void
.end method

.method private handleMhs(Z)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v3, "wifi_saved_state"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 5

    const v4, 0x7f0a0153

    const v1, 0x7f0a0154

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/HotSpot;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/preference/HotSpot;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/HotSpot;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mEnableMhs:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mMhsStatus:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/HotSpot;->updateMhsUI(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/HotSpot;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/HotSpot;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/HotSpot;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/HotSpot;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0141

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020531

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/HotSpot;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private isMLEnabled()Z
    .locals 4

    const-string v1, "init.svc.modem"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotSpotStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ML value = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, "stopped"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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

.method private setHotspotStatus()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    goto :goto_0
.end method

.method private showRemindDialog(Z)V
    .locals 0

    return-void
.end method

.method private showTurnoffWifiDialog()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.hotspot.TurnOffWifi"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "HotSpotStatusBarPreference"

    const-string v2, "turn off wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/widget/StatusBarUtils;->startActivity_s(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private switchHotspotOnOff(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/HotSpot;->setEnabled(Z)V

    :goto_0
    if-nez p1, :cond_2

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f0a0154

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateMhsUI(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_0

    const-string v0, "HotSpotStatusBarPreference"

    const-string v1, "setchecked true summary original"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "HotSpotStatusBarPreference"

    const-string v1, "setchecked false summary starting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mEnableMhs:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected toggleSettings()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/preference/HotSpot;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0141

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
