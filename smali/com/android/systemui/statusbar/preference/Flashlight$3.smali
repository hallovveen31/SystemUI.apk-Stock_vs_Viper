.class Lcom/android/systemui/statusbar/preference/Flashlight$3;
.super Ljava/lang/Object;
.source "Flashlight.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Flashlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Flashlight;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Flashlight;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Flashlight$3;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.htc.flashlight"

    const-string v2, "com.htc.flashlight.FlashlightActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight$3;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Flashlight$3;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/Flashlight;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
