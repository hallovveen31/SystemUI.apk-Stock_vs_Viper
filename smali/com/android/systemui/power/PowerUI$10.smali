.class Lcom/android/systemui/power/PowerUI$10;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showExtremeAutoPowerSaverModeAsk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/high16 v4, 0x1000

    invoke-static {}, Lcom/android/systemui/power/PowerUI;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PowerUI"

    const-string v3, "Extreme PSD onClick"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOnASKOK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Lcom/android/systemui/power/PowerUI;->access$1400(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.HtcPowerSaver.ExtremeAutoModeOn"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V
    invoke-static {v2, v1}, Lcom/android/systemui/power/PowerUI;->access$1400(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v2, v2, Lcom/android/systemui/power/PowerUI;->mExAutoPSModeAskDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v2, v2, Lcom/android/systemui/power/PowerUI;->mExAutoPSModeAskDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method
