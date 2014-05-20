.class Lcom/android/systemui/statusbar/preference/AutoSync$1;
.super Ljava/lang/Object;
.source "AutoSync.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/AutoSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/AutoSync;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/AutoSync;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preference/AutoSync;->setAutoSyncSetting(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    #calls: Lcom/android/systemui/statusbar/preference/AutoSync;->updateUI()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/AutoSync;->access$0(Lcom/android/systemui/statusbar/preference/AutoSync;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
