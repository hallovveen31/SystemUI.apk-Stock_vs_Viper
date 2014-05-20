.class final Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
.super Ljava/lang/Object;
.source "NetworkControllerDual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerDual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataModel"
.end annotation


# instance fields
.field public mCallState:I

.field public mCurCallState:I

.field public mCurDataActivity:I

.field public mCurDataState:I

.field public mCurNetworkType:I

.field public mCurPhoneType:I

.field public mCurServiceState:Landroid/telephony/ServiceState;

.field public mCurSignalStrength:Landroid/telephony/SignalStrength;

.field public mCurSimState:I

.field public mDataActivity:I

.field public mDataIcon:I

.field public mDataIconList:[I

.field public mDataState:I

.field public mDataVisible:Z

.field public mFakeui:Z

.field public mFakeuiTimeout:Ljava/lang/Runnable;

.field public mNetworkType:I

.field public mPhoneType:I

.field public mServiceState:Landroid/telephony/ServiceState;

.field public mSignalIcon:I

.field public mSignalIconLevel:I

.field public mSignalStrength:Landroid/telephony/SignalStrength;

.field public mSignalVisible:Z

.field public mSimState:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    .line 143
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSignalStrength:Landroid/telephony/SignalStrength;

    .line 144
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataActivity:I

    .line 145
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataState:I

    .line 146
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurNetworkType:I

    .line 147
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    .line 148
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurCallState:I

    .line 149
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSimState:I

    .line 152
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    .line 153
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 154
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataActivity:I

    .line 155
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    .line 156
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mNetworkType:I

    .line 157
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    .line 158
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    .line 159
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    .line 162
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    .line 163
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    .line 164
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    .line 167
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    .line 168
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    .line 172
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    .line 173
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeuiTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;-><init>()V

    return-void
.end method
