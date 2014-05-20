.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1$1;
.super Landroid/os/AsyncTask;
.source "QuickSettingRoaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.htc.rosiewidgets.datastrip"

    const-string v2, "com.htc.rosiewidgets.datastrip.DialogActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10c0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->ROAMING_PREFERRED_SLOT:Z

    if-eqz v1, :cond_1

    const-string v1, "QuickSettingRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click mCurPreferredNetwork = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;

    iget-object v3, v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurPreferredNetwork:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "dialog_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "which_sim_slot"

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->mCurPreferredNetwork:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRoaming;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    const-string v1, "dialog_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
