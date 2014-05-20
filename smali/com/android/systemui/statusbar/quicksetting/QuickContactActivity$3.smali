.class Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$3;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "QuickContact"

    const-string v1, "kidCardClickListener.onClick:launch kid mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$3$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickContactActivity$3;)V

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
