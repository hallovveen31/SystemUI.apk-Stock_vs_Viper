.class Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;
.super Ljava/lang/Object;
.source "SystemUISimulator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SystemUISimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimulationTask"
.end annotation


# instance fields
.field private mController:Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;

.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Landroid/content/Intent;Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->mIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->mController:Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->mIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SIMULATION_ENABLED"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_SKU_ID"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->sku_id:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$202(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_REGION"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->region:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$302(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_HAS_CS_SERVICE"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasCsService:Z
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$402(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_HAS_PS_SERVICE"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasPsService:Z
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$502(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Z)Z

    const-string v0, "SIMULATE_SIM_STATE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-class v7, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v6, v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$602(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_NETWORK_ID"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkId:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$702(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_SECTOR_ID"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSectorId:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$802(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_AIRPLANE_MODE"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mAirplaneMode:Z
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$902(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_NETWORK_TYPE"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkType:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$1002(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_DATA_STATE"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mDataState:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$1102(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_DATA_ACTIVITY"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mDataActivity:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$1202(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_SIGNAL_LEVEL"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSignalLevel:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$1302(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_PHONE_TYPE"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mPhoneType:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$1402(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_NETWORK_OPERATOR"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkOperator:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$1502(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_NETWORK_COUNTRY"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mNetworkCountry:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$1602(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_SIM_OPERATOR"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mSimOperator:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$1702(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v0, "SIMULATE_NETWORK_ROAMING"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_3

    move v0, v1

    :goto_2
    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mRoamingGsm:Z
    invoke-static {v5, v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$1802(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_ERI_INDICATOR"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mRoamingCdma:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$1902(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_CALL_STATE"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mCallState:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$2002(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_UNDER_SILENT_RESET"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mUnderSilentReset:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$2102(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_MDM_STATE"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasMdmService:Z
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$2202(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v5, "SIMULATE_QSC_STATE"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHasQscService:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$2302(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v1, "SIMULATE_MDM_NETWORK_TYPE"

    invoke-virtual {v3, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mMdmNetworkType:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$2402(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v1, "SIMULATE_QSC_NETWORK_TYPE"

    invoke-virtual {v3, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mQscNetworkType:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$2502(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v1, "SIMULATE_QSC_SIGNAL_LEVEL"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mQscSignalLevel:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$2602(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    const-string v1, "SIMULATE_MODEM_STATE"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mModemState:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$2702(Lcom/android/systemui/statusbar/policy/SystemUISimulator;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->dump()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;->mController:Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;->startSimulation()V

    :goto_3
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;->triggerIconUpdate()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;->stopSimulation()V

    goto :goto_3
.end method
