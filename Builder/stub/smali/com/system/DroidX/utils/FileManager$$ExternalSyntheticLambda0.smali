.class public final synthetic Lcom/system/DroidX/utils/FileManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/system/DroidX/utils/FileManager$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/system/DroidX/utils/FileManager$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    invoke-static {v0}, Lcom/system/DroidX/utils/FileManager;->lambda$dumpDirectory$1(Ljava/io/File;)V

    return-void
.end method
