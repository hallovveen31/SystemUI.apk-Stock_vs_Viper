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

    .prologue
    .line 60
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mTimerEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->PHONE_SLOT_NONE:I

    .line 63
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->PHONE_SLOT_1:I

    .line 64
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->PHONE_SLOT_2:I

    .line 66
    iput v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->SERVICE_SHIFT:I

    .line 67
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->SLOT_SHIFT:I

    .line 68
    const/16 v0, 0x1b

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->OTHERS_SHIFT:I

    .line 70
    iput v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_ICC_ABSENT:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_ICC_PUK_PERM_BLOCKED:I

    .line 72
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_ICC_FAIL:I

    .line 73
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_ICC_IMEI_LOCKED:I

    .line 74
    iput v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_ICC_NOT_READY:I

    .line 75
    const/high16 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_STATE_OUT_OF_SERVICE:I

    .line 76
    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_STATE_EMERGENCY_ONLY:I

    .line 77
    const/high16 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_STATE_POWER_OFF:I

    .line 78
    const/high16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_STATE_NETWORK_SEARCHING:I

    .line 79
    const/high16 v0, 0x100

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_SLOT_SINGLE:I

    .line 80
    const/high16 v0, 0x800

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->KEY_UNREGISTERED_SIM_CODE_3:I

    .line 85
    iput v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSkuId:I

    .line 86
    iput v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingIdx:I

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    .line 92
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mDualPhone:Z

    .line 93
    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mDualGSMPhone:Z

    .line 94
    iput v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneType:I

    .line 95
    iput v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I

    .line 101
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 102
    iput v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatus:I

    .line 109
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimStateSlot2:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 110
    iput v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatusSlot2:I

    .line 206
    new-instance v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;-><init>(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 562
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    .line 563
    new-instance v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$2;-><init>(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    .line 579
    new-instance v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;-><init>(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNetworkTextView:Landroid/widget/TextView;

    .line 702
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mContext:Landroid/content/Context;

    .line 119
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhone:Landroid/telephony/TelephonyManager;

    .line 120
    sget v0, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSkuId:I

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->stringCustomization()V

    .line 124
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->register(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;)V

    .line 128
    :cond_0
    const-string v0, "CarrierLabel"

    const-string v1, "CarrierLabel Simulator initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatus:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatusSlot2:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatusSlot2:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkNameExt()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkName(ZZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateIccState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->addSeperator()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getServiceState(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingIdx:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingIdx:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingString:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpn:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpn:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSPN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSPN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPLMN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPLMN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpnSlot2:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpnSlot2:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnSlot2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnSlot2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmnSlot2:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmnSlot2:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnSlot2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnSlot2:Ljava/lang/String;

    return-object p1
.end method

.method private addSeperator()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 288
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSeperator - Plmn visibility  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Spn visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 291
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

    .line 293
    :cond_1
    return-void
.end method

.method private getPlmn(Z)Ljava/lang/String;
    .locals 1
    .parameter "isSlot1"

    .prologue
    .line 771
    if-eqz p1, :cond_1

    .line 772
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN:Ljava/lang/String;

    .line 777
    :goto_0
    return-object v0

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPLMN:Ljava/lang/String;

    goto :goto_0

    .line 776
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

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnSlot2:Ljava/lang/String;

    goto :goto_0
.end method

.method private getServiceState(Z)I
    .locals 1
    .parameter "isSlot1"

    .prologue
    .line 738
    if-eqz p1, :cond_1

    .line 739
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SERVICE_STATE:I

    .line 744
    :goto_0
    return v0

    .line 740
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatus:I

    goto :goto_0

    .line 743
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

    .line 744
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatusSlot2:I

    goto :goto_0
.end method

.method private getShowPlmn(Z)Z
    .locals 1
    .parameter "isSlot1"

    .prologue
    .line 749
    if-eqz p1, :cond_1

    .line 750
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN:Z

    .line 755
    :goto_0
    return v0

    .line 751
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmn:Z

    goto :goto_0

    .line 754
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

    .line 755
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmnSlot2:Z

    goto :goto_0
.end method

.method private getShowSpn(Z)Z
    .locals 1
    .parameter "isSlot1"

    .prologue
    .line 760
    if-eqz p1, :cond_1

    .line 761
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN:Z

    .line 766
    :goto_0
    return v0

    .line 762
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpn:Z

    goto :goto_0

    .line 765
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

    .line 766
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpnSlot2:Z

    goto :goto_0
.end method

.method private getSimState(Z)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .parameter "isSlot1"

    .prologue
    .line 727
    if-eqz p1, :cond_1

    .line 728
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 733
    :goto_0
    return-object v0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 732
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

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimStateSlot2:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private getSpn(Z)Ljava/lang/String;
    .locals 1
    .parameter "isSlot1"

    .prologue
    .line 782
    if-eqz p1, :cond_1

    .line 783
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulator:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN:Ljava/lang/String;

    .line 788
    :goto_0
    return-object v0

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSPN:Ljava/lang/String;

    goto :goto_0

    .line 787
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

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnSlot2:Ljava/lang/String;

    goto :goto_0
.end method

.method private isC2G()Z
    .locals 4

    .prologue
    .line 666
    const/4 v0, 0x0

    .line 668
    .local v0, isC2G:Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->isSingleGDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 669
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_mode_card_to_gsm"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 678
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v1, :cond_1

    .line 679
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

    .line 681
    :cond_1
    return v0

    .line 671
    :cond_2
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 672
    const/4 v0, 0x1

    goto :goto_0

    .line 673
    :cond_3
    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceCapabilityCdma()Z
    .locals 1

    .prologue
    .line 696
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

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, isSingleG:Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->isDeviceCapabilityCdma()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportCG2GGPhoneModeChange()Z

    move-result v1

    if-nez v1, :cond_0

    .line 687
    const/4 v0, 0x1

    .line 689
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v1, :cond_1

    .line 690
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

    .line 692
    :cond_1
    return v0
.end method

.method private refineDisplay()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x4

    const/4 v6, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 446
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getSimState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 447
    .local v2, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getSimState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 448
    .local v3, simStateSlot2:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getServiceState(Z)I

    move-result v0

    .line 449
    .local v0, serviceState:I
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getServiceState(Z)I

    move-result v1

    .line 451
    .local v1, serviceStateSlot2:I
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_1

    .line 453
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
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

    .line 456
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_2

    .line 463
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
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

    .line 466
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 471
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_3

    .line 473
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
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

    .line 476
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 481
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

    .line 485
    :cond_6
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 487
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 489
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

    .line 490
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 496
    :cond_7
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_9

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_9

    .line 498
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    :cond_8
    :goto_1
    if-ne v0, v6, :cond_a

    if-ne v1, v6, :cond_a

    .line 509
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 511
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

    .line 512
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 501
    :cond_9
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_8

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_8

    .line 503
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 517
    :cond_a
    if-ne v0, v5, :cond_b

    if-ne v1, v5, :cond_b

    .line 519
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 521
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

    .line 522
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 527
    :cond_b
    if-ne v0, v9, :cond_c

    if-ne v1, v9, :cond_c

    .line 529
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 531
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

    .line 532
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 536
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 537
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 541
    :cond_c
    if-nez v0, :cond_e

    if-eqz v1, :cond_e

    .line 543
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 555
    :cond_d
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->isSingleGDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->isC2G()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 547
    :cond_e
    if-eqz v0, :cond_d

    if-nez v1, :cond_d

    .line 549
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private stringCustomization()V
    .locals 8

    .prologue
    const v7, 0x204012e

    const v6, 0x1000001

    const/4 v5, 0x4

    const/4 v4, 0x1

    const v3, 0x1000004

    .line 170
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

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mDualGSMPhone:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0103

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0102

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x204012a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x20401b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x204012f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x2040130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0103

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0102

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSkuId:I

    sparse-switch v0, :sswitch_data_0

    .line 200
    :goto_1
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingString:[I

    .line 204
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a00fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 194
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a00fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a00fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch

    .line 200
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
    .parameter "isSlot1"
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    const v3, 0x7f0a0101

    const v2, 0x7f0a0100

    const/4 v6, 0x0

    .line 300
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

    .line 303
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    .line 304
    .local v0, label:Landroid/widget/TextView;
    :goto_1
    if-eqz p4, :cond_5

    .line 306
    if-eqz p5, :cond_4

    .line 307
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

    .line 311
    :goto_3
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    :goto_4
    return-void

    .line 300
    .end local v0           #label:Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    goto :goto_1

    .restart local v0       #label:Landroid/widget/TextView;
    :cond_3
    move v1, v3

    .line 307
    goto :goto_2

    .line 309
    :cond_4
    const v1, 0x104030b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 315
    :cond_5
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 317
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

    .line 318
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    move v2, v3

    .line 317
    goto :goto_5

    .line 322
    :cond_7
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method private updateDualSimNetworkNameExt()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    const v1, 0x204012d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarrierLabel"

    const-string v1, "airplane mode on."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isWIFIOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CarrierLabel"

    const-string v1, "HtcBuildUtils.isWIFIOnly()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 345
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateSlotLabel(Z)V

    .line 346
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateSlotLabel(Z)V

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->refineDisplay()V

    goto :goto_0
.end method

.method private updateIccState(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 597
    const-string v3, "ss"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, state:Ljava/lang/String;
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

    .line 601
    :cond_0
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 603
    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, lockedReason:Ljava/lang/String;
    const-string v3, "PERM_DISABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 606
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 607
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "CarrierLabel"

    const-string v4, "Sim State : PUK_PERM_BLOCKED"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_d

    .line 641
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 645
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkNameExt()V

    .line 646
    return-void

    .line 611
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v0       #lockedReason:Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 614
    .end local v0           #lockedReason:Ljava/lang/String;
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 616
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 618
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    const-string v3, "LOCKED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 620
    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .restart local v0       #lockedReason:Ljava/lang/String;
    const-string v3, "PIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 623
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 624
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    const-string v3, "PUK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 625
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 627
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 629
    .end local v0           #lockedReason:Ljava/lang/String;
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_8
    const-string v3, "ICC_FAIL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 630
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 631
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_9
    const-string v3, "IMEI_LOCK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 632
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 633
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_a
    const-string v3, "ICC_EXPIRED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 634
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 635
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_b
    const-string v3, "NOT_READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 636
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 638
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_c
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 642
    :cond_d
    iget v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    .line 643
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimStateSlot2:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1
.end method

.method private updateSlotLabel(Z)V
    .locals 11
    .parameter "isSlot1"

    .prologue
    const/4 v2, 0x2

    const/4 v10, 0x4

    const/4 v1, 0x1

    const/16 v9, 0x8

    const/4 v5, 0x0

    .line 352
    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    .line 353
    .local v6, label:Landroid/widget/TextView;
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getSimState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    .line 354
    .local v8, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getServiceState(Z)I

    move-result v7

    .line 356
    .local v7, serviceState:I
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

    .line 359
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v8, v0, :cond_5

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v2, 0x1000001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
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

    .line 364
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    :goto_2
    return-void

    .line 352
    .end local v6           #label:Landroid/widget/TextView;
    .end local v7           #serviceState:I
    .end local v8           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    goto :goto_0

    .restart local v6       #label:Landroid/widget/TextView;
    .restart local v7       #serviceState:I
    .restart local v8       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    move v0, v2

    .line 356
    goto :goto_1

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 369
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 372
    :cond_4
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 375
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v8, v0, :cond_8

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const v1, 0x1000004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 379
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

    .line 380
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 382
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 385
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 388
    :cond_7
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 391
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v8, v0, :cond_a

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 396
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 399
    :cond_9
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 403
    :cond_a
    if-nez v7, :cond_b

    .line 405
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

    .line 410
    :cond_b
    if-ne v7, v10, :cond_f

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 413
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

    .line 414
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    :goto_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnable:Ljava/lang/Runnable;

    :goto_4
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 416
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;

    goto :goto_3

    .line 417
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;

    goto :goto_4

    .line 420
    :cond_e
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 422
    :cond_f
    if-ne v7, v2, :cond_11

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 426
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

    .line 427
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 430
    :cond_10
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 434
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mCarrierLabelStrSet:Ljava/util/HashMap;

    const/high16 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 436
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

    .line 437
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 440
    :cond_12
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 144
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mAttached:Z

    if-nez v1, :cond_1

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mAttached:Z

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, filter:Landroid/content/IntentFilter;
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_ONLY:Z

    if-nez v1, :cond_0

    .line 148
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "com.htc.intent.action.SIM_STATE_CHANGED_EXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    :cond_0
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 157
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mAttached:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mAttached:Z

    .line 166
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnLabel:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;

    .line 136
    const/4 v1, 0x1

    move-object v0, p0

    move v4, v2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkName(ZZLjava/lang/String;ZLjava/lang/String;)V

    move-object v0, p0

    move v1, v2

    move v4, v2

    move-object v5, v3

    .line 137
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkName(ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 138
    return-void
.end method

.method public setSkuId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 715
    iput p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSkuId:I

    .line 716
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->stringCustomization()V

    .line 717
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 718
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 719
    :cond_0
    return-void
.end method

.method public startSimulation()V
    .locals 1

    .prologue
    .line 705
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 706
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    goto :goto_0
.end method

.method public stopSimulation()V
    .locals 1

    .prologue
    .line 710
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->HTC_DEBUG:Z

    if-nez v0, :cond_0

    .line 712
    :goto_0
    return-void

    .line 711
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSimulationEnabled:Z

    goto :goto_0
.end method

.method public triggerUpdate()V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkNameExt()V

    .line 723
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->addSeperator()V

    .line 724
    return-void
.end method

.method updateResources()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkNameExt()V

    .line 297
    return-void
.end method
