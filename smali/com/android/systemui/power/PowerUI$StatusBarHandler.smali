.class Lcom/android/systemui/power/PowerUI$StatusBarHandler;
.super Landroid/os/Handler;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$StatusBarHandler;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI$StatusBarHandler;-><init>(Lcom/android/systemui/power/PowerUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$StatusBarHandler;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->checkHtcCustomizationReader()Z
    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$StatusBarHandler;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;
    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$1600(Lcom/android/systemui/power/PowerUI;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "battery_stop_low_battery_tone_after_1sec"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/android/systemui/power/PowerUI;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$StatusBarHandler;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->stopLowBatteryTone()V
    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$1700(Lcom/android/systemui/power/PowerUI;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method
