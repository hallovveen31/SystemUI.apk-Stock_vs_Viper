.class Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;
.super Ljava/lang/Object;
.source "CarrierLabelSimulator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimulationTask"
.end annotation


# instance fields
.field private mController:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;

.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;Landroid/content/Intent;Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;)V
    .locals 0
    .parameter
    .parameter "intent"
    .parameter "controller"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->mIntent:Landroid/content/Intent;

    .line 79
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->mController:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;

    .line 80
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->mIntent:Landroid/content/Intent;

    .line 87
    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, "SIMULATION_ENABLED"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_ENABLE:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_ENABLE:Z

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_ENABLE:Z

    if-eqz v0, :cond_8

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, "SIMULATE_SKU_ID"

    sget v3, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SKU_ID:I

    .line 98
    const-string v0, "SIMULATE_SIM_STATE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 101
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-class v4, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, v3, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, "SIMULATE_SERVICE_STATE"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SERVICE_STATE:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SERVICE_STATE:I

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SERVICE_STATE:I

    if-nez v0, :cond_a

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, "SIMULATE_SHOW_PLMN"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN:Z

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, "SIMULATE_SHOW_SPN"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN:Z

    .line 113
    const-string v0, "SIMULATE_PLMN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN:Ljava/lang/String;

    .line 115
    :cond_3
    const-string v0, "SIMULATE_SPN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN:Ljava/lang/String;

    .line 125
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, "SIMULATION_DUAL_SIM_ENABLED"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_DUAL_SIM:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_DUAL_SIM:Z

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_DUAL_SIM:Z

    if-eqz v0, :cond_7

    .line 129
    const-string v0, "SIMULATE_SLOT2_SIM_STATE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_5

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 132
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 134
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-class v4, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, v3, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SLOT2_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, "SIMULATE_SLOT2_SERVICE_STATE"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SLOT2_SERVICE_STATE:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SLOT2_SERVICE_STATE:I

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SLOT2_SERVICE_STATE:I

    if-nez v0, :cond_b

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, "SIMULATE_SHOW_PLMN_SLOT2"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN_SLOT2:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN_SLOT2:Z

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, "SIMULATE_SHOW_SPN_SLOT2"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN_SLOT2:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN_SLOT2:Z

    .line 144
    const-string v0, "SIMULATE_PLMN_SLOT2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_6

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN_SLOT2:Ljava/lang/String;

    .line 146
    :cond_6
    const-string v0, "SIMULATE_SPN_SLOT2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_7

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN_SLOT2:Ljava/lang/String;

    .line 158
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    #calls: Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->dump()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->access$200(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;)V

    .line 161
    :cond_8
    const-string v0, "SIMULATION_CLOSE"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 162
    if-eqz v0, :cond_9

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_ENABLE:Z

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_DUAL_SIM:Z

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    iput v1, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SKU_ID:I

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput v5, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SERVICE_STATE:I

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN:Z

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN:Z

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SLOT2_SIM_STATE:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput v5, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SLOT2_SERVICE_STATE:I

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN_SLOT2:Z

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN_SLOT2:Z

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN_SLOT2:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN_SLOT2:Ljava/lang/String;

    .line 181
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->mController:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;

    .line 182
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_ENABLE:Z

    if-eqz v1, :cond_c

    .line 184
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;->startSimulation()V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SKU_ID:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;->setSkuId(I)V

    .line 190
    :goto_5
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;->triggerUpdate()V

    goto/16 :goto_0

    .line 104
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 119
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN:Z

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN:Z

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, ""

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, ""

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN:Ljava/lang/String;

    goto/16 :goto_2

    .line 135
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 150
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_PLMN_SLOT2:Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SHOW_SPN_SLOT2:Z

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, ""

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_PLMN_SLOT2:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    const-string v2, ""

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->SIMULATE_SPN_SLOT2:Ljava/lang/String;

    goto/16 :goto_4

    .line 187
    :cond_c
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;->stopSimulation()V

    .line 188
    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;->setSkuId(I)V

    goto :goto_5
.end method
