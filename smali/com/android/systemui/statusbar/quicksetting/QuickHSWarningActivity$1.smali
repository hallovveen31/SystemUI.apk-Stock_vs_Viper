.class Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$1;
.super Ljava/lang/Object;
.source "QuickHSWarningActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->notShowAgain:Z
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->access$002(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;Z)Z

    const-string v0, "QuickHSWarningActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBoxListener.onCheckChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->notShowAgain:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickHSWarningActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
