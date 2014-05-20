.class public Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;
.super Ljava/lang/Object;
.source "CarrierLabelSimulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;,
        Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;
    }
.end annotation


# static fields
.field private static final HTC_DEBUG:Z


# instance fields
.field public SIMULATE_DUAL_SIM:Z

.field public SIMULATE_ENABLE:Z

.field public SIMULATE_PLMN:Ljava/lang/String;

.field public SIMULATE_PLMN_SLOT2:Ljava/lang/String;

.field public SIMULATE_SERVICE_STATE:I

.field public SIMULATE_SHOW_PLMN:Z

.field public SIMULATE_SHOW_PLMN_SLOT2:Z

.field public SIMULATE_SHOW_SPN:Z

.field public SIMULATE_SHOW_SPN_SLOT2:Z

.field public SIMULATE_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;

.field public SIMULATE_SKU_ID:I

.field public SIMULATE_SLOT2_SERVICE_STATE:I

.field public SIMULATE_SLOT2_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;

.field public SIMULATE_SPN:Ljava/lang/String;

.field public SIMULATE_SPN_SLOT2:Ljava/lang/String;

.field private mController:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->HTC_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_ENABLE:Z

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SKU_ID:I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;

    iput v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SERVICE_STATE:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SLOT2_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;

    iput v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SLOT2_SERVICE_STATE:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN_SLOT2:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN_SLOT2:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN_SLOT2:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN_SLOT2:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_DUAL_SIM:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->mHandler:Landroid/os/Handler;

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->HTC_DEBUG:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.carrierlabel.simulator.action_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.htc.permission.APP_PLATFORM"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;)Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->mController:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->dump()V

    return-void
.end method

.method private dump()V
    .locals 3

    const-string v0, "CarrierLabelSimulator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Simulate ==============================================\nslot1 sku_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SKU_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n---------------------------------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nslot1 simState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nslot1 serviceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SERVICE_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nslot1 showPlmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nslot1 showSpn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nslot1 Plmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nslot1 Spn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_DUAL_SIM:Z

    if-eqz v0, :cond_0

    const-string v0, "CarrierLabelSimulator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------------------------------------------\nslot2 simState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SLOT2_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nslot2 serviceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SLOT2_SERVICE_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nslot2 showPlmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN_SLOT2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nslot2 showSpn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN_SLOT2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nslot2 Plmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN_SLOT2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nslot2 Spn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN_SLOT2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public register(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->mController:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;

    return-void
.end method
