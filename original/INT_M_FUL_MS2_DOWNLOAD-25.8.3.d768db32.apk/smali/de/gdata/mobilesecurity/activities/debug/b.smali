.class Lde/gdata/mobilesecurity/activities/debug/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/b;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 284
    const-string v0, "gdsigs"

    .line 285
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/b;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "version.sig"

    invoke-static {v1, v2, v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyPrivateFileToExternalStoradeFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 287
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/b;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "names.sig"

    invoke-static {v1, v2, v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyPrivateFileToExternalStoradeFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 289
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/b;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "fileh.sig"

    invoke-static {v1, v2, v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyPrivateFileToExternalStoradeFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 291
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/b;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "file.sig"

    invoke-static {v1, v2, v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyPrivateFileToExternalStoradeFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/b;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "apph.sig"

    invoke-static {v1, v2, v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyPrivateFileToExternalStoradeFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/b;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "app.sig"

    invoke-static {v1, v2, v0}, Lde/gdata/mobilesecurity/util/MyFileHandler;->copyPrivateFileToExternalStoradeFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    return-void
.end method
