.class Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.htc.contacts"

    const-string v4, "com.htc.contacts.MyContactLayerCarouselActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2;

    iget-object v3, v3, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;

    const v4, 0x304000c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2;

    iget-object v3, v3, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "QuickContact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!!!launch user contact fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2;

    iget-object v3, v3, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
