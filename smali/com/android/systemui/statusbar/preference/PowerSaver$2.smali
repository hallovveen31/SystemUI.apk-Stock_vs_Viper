.class Lcom/android/systemui/statusbar/preference/PowerSaver$2;
.super Ljava/lang/Object;
.source "PowerSaver.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/PowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/PowerSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.htcpowermanager"

    const-string v3, "com.htc.htcpowermanager.powersaver.PowerSaverActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$2(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/preference/PowerSaver;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
