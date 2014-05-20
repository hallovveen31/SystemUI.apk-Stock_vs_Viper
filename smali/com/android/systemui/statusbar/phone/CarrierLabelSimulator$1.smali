.class Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabelSimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->access$100(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->mController:Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;->access$000(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;)Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$SimulationTask;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator;Landroid/content/Intent;Lcom/android/systemui/statusbar/phone/CarrierLabelSimulator$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
