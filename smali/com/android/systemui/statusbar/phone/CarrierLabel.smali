.class public Lcom/android/systemui/statusbar/phone/CarrierLabel;
.super Landroid/widget/LinearLayout;
.source "CarrierLabel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;
    }
.end annotation


# static fields
.field private static mTimerEnabled:Z


# instance fields
.field private final KEY_ICC_ABSENT:I

.field private final KEY_ICC_FAIL:I

.field private final KEY_ICC_IMEI_LOCKED:I

.field private final KEY_ICC_NOT_READY:I

.field private final KEY_ICC_PUK_PERM_BLOCKED:I

.field private final KEY_SLOT_SINGLE:I

.field private final KEY_STATE_EMERGENCY_ONLY:I

.field private final KEY_STATE_NETWORK_SEARCHING:I

.field private final KEY_STATE_OUT_OF_SERVICE:I

.field private final KEY_STATE_POWER_OFF:I

.field private final KEY_UNREGISTERED_SIM_CODE_3:I

.field private final OTHERS_SHIFT:I

.field private final SERVICE_SHIFT:I

.field private final SLOT_SHIFT:I

.field private imsReceiver:Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;

.field private imsRegistered:Z

.field private mAirplaneMode:Z

.field private mAttached:Z

.field private mCarrierLabelStrSet:Ljava/util/HashMap;

.field private mContext:Landroid/content/Context;

.field private mFakeUiEnable:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNWKRunnable:Ljava/lang/Runnable;

.field private mNWKSearchingHandler:Landroid/os/Handler;

.field private mNetworkTextView:Landroid/widget/TextView;

.field mPLMN:Ljava/lang/String;

.field private mPlmnLabel:Landroid/widget/TextView;

.field mSPN:Ljava/lang/String;

.field mSearchingIdx:I

.field mSearchingString:[I

.field mServiceStatus:I

.field mShowPlmn:Z

.field mShowSpn:Z

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimulationEnabled:Z

.field private mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

.field private mSkuId:I

.field private mSpnLabel:Landroid/widget/TextView;

.field mUnregisteredSIM:Z

.field private mUnregisteredSIMCode:I

.field private updateCarrierLabel:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mTimerEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->KEY_ICC_ABSENT:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->KEY_ICC_FAIL:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->KEY_ICC_IMEI_LOCKED:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->KEY_ICC_NOT_READY:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->KEY_ICC_PUK_PERM_BLOCKED:I

    const/high16 v0, 0x100

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->KEY_SLOT_SINGLE:I

    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->KEY_STATE_EMERGENCY_ONLY:I

    const/high16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->KEY_STATE_NETWORK_SEARCHING:I

    const/high16 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->KEY_STATE_OUT_OF_SERVICE:I

    const/high16 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->KEY_STATE_POWER_OFF:I

    const/high16 v0, 0x800

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->KEY_UNREGISTERED_SIM_CODE_3:I

    const/16 v0, 0x1b

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->OTHERS_SHIFT:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->SERVICE_SHIFT:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->SLOT_SHIFT:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iput v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAirplaneMode:Z

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->imsReceiver:Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->imsRegistered:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mFakeUiEnable:Z

    iput v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSkuId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLabel$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel$3;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateCarrierLabel:Ljava/lang/Runnable;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNetworkTextView:Landroid/widget/TextView;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulationEnabled:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSkuId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->stringCustomization()V

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->register(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;)V

    :cond_0
    const-string v0, "CarrierLabel"

    const-string v1, "CarrierLabel Simulator initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/phone/CarrierLabel;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mUnregisteredSIMCode:I

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/phone/CarrierLabel;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateIccState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$10()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mTimerEnabled:Z

    return v0
.end method

.method static synthetic access$11(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mTimerEnabled:Z

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateAirplaneMode()V

    return-void
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNetworkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->addSeperator()V

    return-void
.end method

.method static synthetic access$6(Lcom/android/systemui/statusbar/phone/CarrierLabel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->imsRegistered:Z

    return-void
.end method

.method static synthetic access$7(Lcom/android/systemui/statusbar/phone/CarrierLabel;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getServiceState()I

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private addSeperator()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSeperator - Plmn visibility  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Spn visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private getPlmn()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPLMN:Ljava/lang/String;

    goto :goto_0
.end method

.method private getServiceState()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SERVICE_STATE:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    goto :goto_0
.end method

.method private getShowPlmn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowPlmn:Z

    goto :goto_0
.end method

.method private getShowSpn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowSpn:Z

    goto :goto_0
.end method

.method private getSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private getSpn()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSPN:Ljava/lang/String;

    goto :goto_0
.end method

.method private stringCustomization()V
    .locals 8

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x1

    const v3, 0x204012f

    const-string v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSkuId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSkuId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x104036c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a00e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x104036c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x20401b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x204012e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x2040130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSkuId:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingString:[I

    :goto_1
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a00f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a00f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v1, 0x20001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v1, 0x20004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a00ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x20401bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x20401bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v5, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingString:[I

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v1, 0x20004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a00e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v1, 0x20001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v1, 0x20004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a00f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_7
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0x1b -> :sswitch_0
        0x1f -> :sswitch_5
        0x20 -> :sswitch_8
        0x24 -> :sswitch_4
        0x25 -> :sswitch_1
        0x3c -> :sswitch_6
    .end sparse-switch

    :array_0
    .array-data 0x4
        0x30t 0x1t 0x4t 0x2t
        0x31t 0x1t 0x4t 0x2t
        0x32t 0x1t 0x4t 0x2t
        0x33t 0x1t 0x4t 0x2t
    .end array-data

    :array_1
    .array-data 0x4
        0xbbt 0x1t 0x4t 0x2t
        0xbbt 0x1t 0x4t 0x2t
        0xbbt 0x1t 0x4t 0x2t
        0xbbt 0x1t 0x4t 0x2t
    .end array-data
.end method

.method private updateAirplaneMode()V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "airplane_mode_on"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAirplaneMode:Z

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_ONLY:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAirplaneMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const v3, 0x204012d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkNameExt()V

    goto :goto_1
.end method

.method private updateIccState(Landroid/content/Intent;)V
    .locals 5

    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "CarrierLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ICC_STATE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PERM_DISABLED"

    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkNameExt()V

    return-void

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_2
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_3
    const-string v2, "LOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_4
    const-string v2, "PUK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_6
    const-string v2, "ICC_FAIL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_7
    const-string v2, "IMEI_LOCK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_8
    const-string v2, "ICC_EXPIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_9
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_ONLY:Z

    if-nez v1, :cond_0

    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->imsReceiver:Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->imsReceiver:Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.movial.IMS_REGISTRATION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->imsReceiver:Lcom/android/systemui/statusbar/phone/CarrierLabel$ImsBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setCustomText()V

    return-void
.end method

.method public setCustomText()V
    .locals 5

    const/4 v4, -0x1

    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const v1, 0x7f07000a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_custom_statusbartext"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_carrier_textcolor"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_carrier_textcolor"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method setNetworkTextView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNetworkTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setSkuId(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSkuId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->stringCustomization()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public startSimulation()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulationEnabled:Z

    goto :goto_0
.end method

.method public stopSimulation()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimulationEnabled:Z

    goto :goto_0
.end method

.method public triggerUpdate()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkNameExt()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->addSeperator()V

    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkName showSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " showPlmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " plmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSkuId:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method updateNetworkNameExt()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getServiceState()I

    move-result v0

    const-string v3, "CarrierLabel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNetworkNameExt(), mServiceStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mFakeUiEnable:Z

    if-eqz v3, :cond_4

    const-string v3, "sys.under_silent_reset"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "CarrierLabel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNetworkNameExt(), silentresetvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTimerEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mTimerEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_5

    if-ne v1, v9, :cond_2

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mTimerEnabled:Z

    if-nez v3, :cond_1

    sput-boolean v9, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mTimerEnabled:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateCarrierLabel:Ljava/lang/Runnable;

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    const-string v3, "CarrierLabel"

    const-string v4, "(1) no service, no timer, start timer."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CarrierLabel"

    const-string v4, "silent_reset, update Carrier Label delay 60 s..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setCustomText()V

    :goto_1
    return-void

    :cond_2
    if-nez v1, :cond_4

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mTimerEnabled:Z

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_3

    const-string v3, "CarrierLabel"

    const-string v4, "(0) no service, timer running, remove timer."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sput-boolean v6, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mTimerEnabled:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateCarrierLabel:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    const-string v3, "CarrierLabel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNetworkNameExt: mSimState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const v4, 0x204012d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    if-nez v0, :cond_4

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_6

    const-string v3, "CarrierLabel"

    const-string v4, "updateNetworkNameExt(), in service, remove timer."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sput-boolean v6, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mTimerEnabled:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateCarrierLabel:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_ONLY:Z

    if-eqz v3, :cond_8

    const-string v3, "CarrierLabel"

    const-string v4, "WIFIOnly"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    if-ne v0, v7, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v4, 0x20001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v5, 0x20001

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    if-ne v0, v7, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v4, 0x20002

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v5, 0x20002

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_e

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_d
    if-ne v0, v7, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v4, 0x20004

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v5, 0x20004

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_e
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_f

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_f
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mUnregisteredSIMCode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v4, 0x800

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v5, 0x800

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_10
    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getShowSpn()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getSpn()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getShowPlmn()Z

    move-result v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getPlmn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    if-ne v0, v10, :cond_13

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_12
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_13
    if-ne v0, v7, :cond_15

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_14
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_15
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->imsRegistered:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const v4, 0x7f0a00ee

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_16
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method updateResources()V
    .locals 2

    const-string v0, "CarrierLabel"

    const-string v1, "updateResources()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkNameExt()V

    return-void
.end method
