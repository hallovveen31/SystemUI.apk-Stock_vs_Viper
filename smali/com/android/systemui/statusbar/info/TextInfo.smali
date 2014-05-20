.class public abstract Lcom/android/systemui/statusbar/info/TextInfo;
.super Ljava/lang/Object;
.source "TextInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;
    }
.end annotation


# static fields
.field private static final SET_ICON:I = 0x12c

.field private static final SET_TEXT:I = 0xc8

.field private static final SET_VISIBILITY:I = 0x190

.field private static final UPDATE_TEXT:I = 0x64


# instance fields
.field public ID:I

.field private isActive:Z

.field private mCallback:Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/info/TextInfo;->ID:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/info/TextInfo;->isActive:Z

    new-instance v0, Lcom/android/systemui/statusbar/info/TextInfo$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/info/TextInfo$1;-><init>(Lcom/android/systemui/statusbar/info/TextInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/info/TextInfo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/info/TextInfo;->mCallback:Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/info/TextInfo;)Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo;->mCallback:Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/info/TextInfo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected ReadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    int-to-char v5, v0

    :try_start_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method protected RemoveLast3(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected abstract getIconId()I
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getText()Ljava/lang/String;
.end method

.method protected abstract getUpdateInterval()J
.end method

.method public onStart()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/info/TextInfo;->isActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/info/TextInfo;->isActive:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/info/TextInfo$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/info/TextInfo$2;-><init>(Lcom/android/systemui/statusbar/info/TextInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method protected abstract onStartIntenal()V
.end method

.method public onStop()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/info/TextInfo;->isActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/info/TextInfo;->isActive:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/info/TextInfo$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/info/TextInfo$3;-><init>(Lcom/android/systemui/statusbar/info/TextInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method protected abstract onStopIntenal()V
.end method

.method protected setIcon(I)V
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "icon"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v2, 0x12c

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/TextInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/TextInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected setVisibility(I)V
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v2, 0x190

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/info/TextInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
