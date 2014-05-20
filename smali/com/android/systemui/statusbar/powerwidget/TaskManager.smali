.class public Lcom/android/systemui/statusbar/powerwidget/TaskManager;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "TaskManager.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const v0, 0x7f0a0146

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/TaskManager;->setTitle(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/TaskManager;->isIndicatorEnabled:Z

    return-void
.end method


# virtual methods
.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    return-object v0
.end method

.method protected getIconForState(Z)I
    .locals 1

    const v0, 0x7f0205f1

    return v0
.end method

.method protected onToggleClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.htc.taskmanager"

    const-string v2, "com.htc.taskmanager.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "recent_apps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/TaskManager;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onToggleLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
