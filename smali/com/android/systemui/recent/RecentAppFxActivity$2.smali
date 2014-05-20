.class Lcom/android/systemui/recent/RecentAppFxActivity$2;
.super Ljava/lang/Object;
.source "RecentAppFxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentAppFxActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentAppFxActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$2;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$2;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$6(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$2;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$6(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method
