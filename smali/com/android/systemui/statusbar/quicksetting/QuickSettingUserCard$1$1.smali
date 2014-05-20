.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1$1;
.super Landroid/os/AsyncTask;
.source "QuickSettingUserCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10c0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
