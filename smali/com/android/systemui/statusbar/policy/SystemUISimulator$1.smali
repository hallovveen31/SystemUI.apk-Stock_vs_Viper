.class Lcom/android/systemui/statusbar/policy/SystemUISimulator$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUISimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/SystemUISimulator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SystemUISimulator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$1;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$1;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    #getter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$100(Lcom/android/systemui/statusbar/policy/SystemUISimulator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$1;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SystemUISimulator$1;->this$0:Lcom/android/systemui/statusbar/policy/SystemUISimulator;

    #getter for: Lcom/android/systemui/statusbar/policy/SystemUISimulator;->mController:Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/SystemUISimulator;->access$000(Lcom/android/systemui/statusbar/policy/SystemUISimulator;)Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcom/android/systemui/statusbar/policy/SystemUISimulator$SimulationTask;-><init>(Lcom/android/systemui/statusbar/policy/SystemUISimulator;Landroid/content/Intent;Lcom/android/systemui/statusbar/policy/SystemUISimulator$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
