.class Lcom/android/systemui/statusbar/info/BatteryInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/info/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/info/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/info/BatteryInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/info/BatteryInfo$1;->this$0:Lcom/android/systemui/statusbar/info/BatteryInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "level"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v8, "scale"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v8, "status"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v2, -0x1

    if-ltz v3, :cond_0

    if-lez v4, :cond_0

    mul-int/lit8 v8, v3, 0x64

    div-int v2, v8, v4

    :cond_0
    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    const/4 v8, 0x5

    if-eq v5, v8, :cond_2

    move v1, v6

    :goto_0
    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/info/BatteryInfo$1;->this$0:Lcom/android/systemui/statusbar/info/BatteryInfo;

    const v9, 0x7f020550

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/info/BatteryInfo;->setIcon(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/info/BatteryInfo$1;->this$0:Lcom/android/systemui/statusbar/info/BatteryInfo;

    iget-object v9, p0, Lcom/android/systemui/statusbar/info/BatteryInfo$1;->this$0:Lcom/android/systemui/statusbar/info/BatteryInfo;

    const v10, 0x7f0a0130

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/info/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/info/BatteryInfo;->setText(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v7

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/info/BatteryInfo$1;->this$0:Lcom/android/systemui/statusbar/info/BatteryInfo;

    const v9, 0x7f02054f

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/info/BatteryInfo;->setIcon(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/info/BatteryInfo$1;->this$0:Lcom/android/systemui/statusbar/info/BatteryInfo;

    iget-object v9, p0, Lcom/android/systemui/statusbar/info/BatteryInfo$1;->this$0:Lcom/android/systemui/statusbar/info/BatteryInfo;

    const v10, 0x7f0a012f

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/info/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/info/BatteryInfo;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method
