.class Lcom/android/systemui/power/PowerUI$11;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$11;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1008
    invoke-static {}, Lcom/android/systemui/power/PowerUI;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    const-string v0, "PowerUI"

    const-string v1, "Extreme PSD onDismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$11;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mExAutoPSModeAskDialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 1012
    return-void
.end method