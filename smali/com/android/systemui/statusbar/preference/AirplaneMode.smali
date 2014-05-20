.class public Lcom/android/systemui/statusbar/preference/AirplaneMode;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "AirplaneMode.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x32

.field private static final TAG:Ljava/lang/String; = "AirplaneModeStatusBarPreference"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;-><init>(Lcom/android/systemui/statusbar/preference/AirplaneMode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/AirplaneMode$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/AirplaneMode$2;-><init>(Lcom/android/systemui/statusbar/preference/AirplaneMode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/preference/AirplaneMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->setAirplaneModeOn(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/preference/AirplaneMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->onAirplaneModeChanged()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a013f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020527

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPowerOff()Z
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v4}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f0a0153

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->setEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v5, 0x7f0a0154

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->setEnabled(Z)V

    goto :goto_1
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f0a0153

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f0a0154

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a013f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
