.class public Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;
.super Landroid/widget/LinearLayout;
.source "CarrierLabelDual.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;


# static fields
.field private static final HTC_DEBUG:Z

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

.field private final PHONE_SLOT_1:I

.field private final PHONE_SLOT_2:I

.field private final PHONE_SLOT_NONE:I

.field private final SERVICE_SHIFT:I

.field private final SLOT_SHIFT:I

.field private mAttached:Z

.field private mCarrierLabelStrSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDualGSMPhone:Z

.field private final mDualPhone:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNWKRunnable:Ljava/lang/Runnable;

.field private mNWKRunnableSlo2:Ljava/lang/Runnable;

.field private mNWKSearchingHandler:Landroid/os/Handler;

.field private mNetworkTextView:Landroid/widget/TextView;

.field private mPLMN:Ljava/lang/String;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneSlot:I

.field private mPhoneType:I

.field private mPlmnLabel:Landroid/widget/TextView;

.field private mPlmnSlot2:Ljava/lang/String;

.field private mSPN:Ljava/lang/String;

.field private mSearchingIdx:I

.field private mSearchingString:[I

.field private mServiceStatus:I

.field private mServiceStatusSlot2:I

.field private mShowPlmn:Z

.field private mShowPlmnSlot2:Z

.field private mShowSpn:Z

.field private mShowSpnSlot2:Z

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimStateSlot2:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimulationEnabled:Z

.field private mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

.field private mSkuId:I

.field private mSpnLabel:Landroid/widget/TextView;

.field private mSpnSlot2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mTimerEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/16 v3, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->PHONE_SLOT_NONE:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->PHONE_SLOT_1:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->PHONE_SLOT_2:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->SERVICE_SHIFT:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->SLOT_SHIFT:I

    const/16 v0, 0x1b

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->OTHERS_SHIFT:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_ICC_ABSENT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_ICC_PUK_PERM_BLOCKED:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_ICC_FAIL:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_ICC_IMEI_LOCKED:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_ICC_NOT_READY:I

    const/high16 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_STATE_OUT_OF_SERVICE:I

    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_STATE_EMERGENCY_ONLY:I

    const/high16 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_STATE_POWER_OFF:I

    const/high16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_STATE_NETWORK_SEARCHING:I

    const/high16 v0, 0x100

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_SLOT_SINGLE:I

    const/high16 v0, 0x800

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_UNREGISTERED_SIM_CODE_3:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSkuId:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingIdx:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mDualPhone:Z

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mDualGSMPhone:Z

    iput v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneType:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iput v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatus:I

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimStateSlot2:Lcom/android/internal/telephony/IccCardConstants$State;

    iput v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatusSlot2:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;-><init>(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$2;-><init>(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;-><init>(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNetworkTextView:Landroid/widget/TextView;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhone:Landroid/telephony/TelephonyManager;

    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSkuId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->stringCustomization()V

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->register(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;)V

    :cond_0
    const-string v0, "CarrierLabel"

    const-string v1, "CarrierLabel Simulator initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatus:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatusSlot2:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatusSlot2:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkNameExt()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkName(ZZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateIccState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->addSeperator()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getServiceState(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingIdx:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingIdx:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingString:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpn:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSPN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSPN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPLMN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPLMN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpnSlot2:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpnSlot2:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnSlot2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnSlot2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmnSlot2:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmnSlot2:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnSlot2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnSlot2:Ljava/lang/String;

    return-object p1
.end method

.method private addSeperator()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSeperator - Plmn visibility  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Spn visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private getPlmn(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPLMN:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_DUAL_SIM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN_SLOT2:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnSlot2:Ljava/lang/String;

    goto :goto_0
.end method

.method private getServiceState(Z)I
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SERVICE_STATE:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatus:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_DUAL_SIM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SLOT2_SERVICE_STATE:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatusSlot2:I

    goto :goto_0
.end method

.method private getShowPlmn(Z)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmn:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_DUAL_SIM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN_SLOT2:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmnSlot2:Z

    goto :goto_0
.end method

.method private getShowSpn(Z)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpn:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_DUAL_SIM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN_SLOT2:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpnSlot2:Z

    goto :goto_0
.end method

.method private getSimState(Z)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_DUAL_SIM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SLOT2_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimStateSlot2:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private getSpn(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSPN:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_DUAL_SIM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN_SLOT2:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnSlot2:Ljava/lang/String;

    goto :goto_0
.end method

.method private isC2G()Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->isSingleGDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_mode_card_to_gsm"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CarrierLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isC2G: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceCapabilityCdma()Z
    .locals 1

    sget v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSingleGDevice()Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->isDeviceCapabilityCdma()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportCG2GGPhoneModeChange()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CarrierLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSingleG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private refineDisplay()V
    .locals 10

    const/4 v5, 0x2

    const/4 v9, 0x4

    const/4 v6, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getSimState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getSimState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getServiceState(Z)I

    move-result v0

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getServiceState(Z)I

    move-result v1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_4

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_6

    :cond_4
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_5

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_6

    :cond_5
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_7

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_7

    :cond_6
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_9

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_1
    if-ne v0, v6, :cond_a

    if-ne v1, v6, :cond_a

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_8

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_a
    if-ne v0, v5, :cond_b

    if-ne v1, v5, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    if-ne v0, v9, :cond_c

    if-ne v1, v9, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_c
    if-nez v0, :cond_e

    if-eqz v1, :cond_e

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->isSingleGDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->isC2G()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_e
    if-eqz v0, :cond_d

    if-nez v1, :cond_d

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private stringCustomization()V
    .locals 8

    const v7, 0x204012e

    const v6, 0x1000001

    const/4 v5, 0x4

    const/4 v4, 0x1

    const v3, 0x1000004

    const-string v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sku : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSkuId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mDualGSMPhone:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0103

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0102

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x204012a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x20401b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x204012f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x2040130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0103

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0102

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSkuId:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingString:[I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a00fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a00fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a00fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 0x4
        0x30t 0x1t 0x4t 0x2t
        0x31t 0x1t 0x4t 0x2t
        0x32t 0x1t 0x4t 0x2t
        0x33t 0x1t 0x4t 0x2t
    .end array-data
.end method

.method private updateDualSimNetworkName(ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 7

    const v3, 0x7f0a0101

    const v2, 0x7f0a0100

    const/4 v6, 0x0

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v4, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDualSimNetworkName Slot("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") showSpn="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " spn="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " showPlmn="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " plmn="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    :goto_1
    if-eqz p4, :cond_5

    if-eqz p5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    const v1, 0x104030b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_6

    :goto_5
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_6
    move v2, v3

    goto :goto_5

    :cond_7
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private updateDualSimNetworkNameExt()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    const v1, 0x204012d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarrierLabel"

    const-string v1, "airplane mode on."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isWIFIOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CarrierLabel"

    const-string v1, "HtcBuildUtils.isWIFIOnly()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateSlotLabel(Z)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateSlotLabel(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->refineDisplay()V

    goto :goto_0
.end method

.method private updateIccState(Landroid/content/Intent;)V
    .locals 6

    const-string v3, "ss"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "CarrierLabel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ICC_STATE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "PERM_DISABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "CarrierLabel"

    const-string v4, "Sim State : PUK_PERM_BLOCKED"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_d

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkNameExt()V

    return-void

    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_4
    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_5
    const-string v3, "LOCKED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "PIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_6
    const-string v3, "PUK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_8
    const-string v3, "ICC_FAIL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_9
    const-string v3, "IMEI_LOCK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_a
    const-string v3, "ICC_EXPIRED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_b
    const-string v3, "NOT_READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_c
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    :cond_d
    iget v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimStateSlot2:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1
.end method

.method private updateSlotLabel(Z)V
    .locals 11

    const/4 v2, 0x2

    const/4 v10, 0x4

    const/4 v1, 0x1

    const/16 v9, 0x8

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getSimState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getServiceState(Z)I

    move-result v7

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v3, "CarrierLabel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlotLabel(), update Slot("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "), Sim State = ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "), Service State = ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v8, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v2, 0x1000001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v1, 0x1000001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v8, v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v1, 0x1000004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v1, 0x1000004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v8, v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    if-nez v7, :cond_b

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getShowSpn(Z)Z

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getSpn(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getShowPlmn(Z)Z

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getPlmn(Z)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkName(ZZLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    if-ne v7, v10, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    :goto_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    :goto_4
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;

    goto :goto_4

    :cond_e
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_f
    if-ne v7, v2, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mAttached:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_ONLY:Z

    if-nez v1, :cond_0

    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.intent.action.SIM_STATE_CHANGED_EXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    const/4 v1, 0x1

    move-object v0, p0

    move v4, v2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkName(ZZLjava/lang/String;ZLjava/lang/String;)V

    move-object v0, p0

    move v1, v2

    move v4, v2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkName(ZZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public setSkuId(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSkuId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->stringCustomization()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public startSimulation()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    goto :goto_0
.end method

.method public stopSimulation()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    goto :goto_0
.end method

.method public triggerUpdate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkNameExt()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->addSeperator()V

    return-void
.end method

.method updateResources()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkNameExt()V

    return-void
.end method
