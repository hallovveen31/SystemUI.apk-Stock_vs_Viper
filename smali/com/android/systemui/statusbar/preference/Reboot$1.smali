.class Lcom/android/systemui/statusbar/preference/Reboot$1;
.super Ljava/lang/Object;
.source "Reboot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Reboot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Reboot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Reboot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Reboot$1;->this$0:Lcom/android/systemui/statusbar/preference/Reboot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Reboot$1;->this$0:Lcom/android/systemui/statusbar/preference/Reboot;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Reboot;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ADV_REBOOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Reboot$1;->this$0:Lcom/android/systemui/statusbar/preference/Reboot;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/Reboot;->collapseStatusBar()V

    return-void
.end method
