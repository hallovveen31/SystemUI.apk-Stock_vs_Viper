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

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurServiceState:Landroid/telephony/ServiceState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSignalStrength:Landroid/telephony/SignalStrength;

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataActivity:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurDataState:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurNetworkType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurPhoneType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurCallState:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCurSimState:I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mServiceState:Landroid/telephony/ServiceState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataActivity:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataState:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mNetworkType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mPhoneType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mCallState:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSimState:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataVisible:Z

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIcon:I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mDataIconList:[I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalVisible:Z

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIcon:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mSignalIconLevel:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeuiTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;-><init>()V

    return-void
.end method
