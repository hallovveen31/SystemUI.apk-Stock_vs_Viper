.class Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcPhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FeliCa onReceive, action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->printLog(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->access$0(Ljava/lang/String;)V

    const-string v1, "com.htc.intent.action.FELICA_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->updateFelicaLock(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;->access$9(Lcom/android/systemui/statusbar/phone/HtcPhoneStatusBarPolicy;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
