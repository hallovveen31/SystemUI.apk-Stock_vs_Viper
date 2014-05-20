.class Lcom/android/systemui/statusbar/preference/Rotation$2;
.super Ljava/lang/Object;
.source "Rotation.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Rotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Rotation;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Rotation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Rotation$2;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$2;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/Rotation;->collapseStatusBar()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$2;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Rotation$2;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/Rotation;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/Rotation;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
