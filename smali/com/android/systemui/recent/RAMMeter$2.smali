.class Lcom/android/systemui/recent/RAMMeter$2;
.super Ljava/lang/Object;
.source "RAMMeter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RAMMeter;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RAMMeter;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RAMMeter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RAMMeter$2;->this$0:Lcom/android/systemui/recent/RAMMeter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.taskmanager"

    const-string v3, "com.htc.taskmanager.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recent/RAMMeter$2;->this$0:Lcom/android/systemui/recent/RAMMeter;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RAMMeter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
