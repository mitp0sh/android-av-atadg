.class final Lde/gdata/mobilesecurity/scan/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/scan/NotifyProgress;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/scan/ScanService;


# direct methods
.method private constructor <init>(Lde/gdata/mobilesecurity/scan/ScanService;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/g;->a:Lde/gdata/mobilesecurity/scan/ScanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/gdata/mobilesecurity/scan/ScanService;Lde/gdata/mobilesecurity/scan/e;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/scan/g;-><init>(Lde/gdata/mobilesecurity/scan/ScanService;)V

    return-void
.end method


# virtual methods
.method public advance(I)V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public finished()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public flipIndeterminate(Z)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/g;->a:Lde/gdata/mobilesecurity/scan/ScanService;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/scan/ScanService;->flipIndeterminate(Z)V

    .line 264
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public setAdvanceStep(I)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public setLimit(I)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public tick()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/g;->a:Lde/gdata/mobilesecurity/scan/ScanService;

    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/g;->a:Lde/gdata/mobilesecurity/scan/ScanService;

    invoke-static {v1}, Lde/gdata/mobilesecurity/scan/ScanService;->a(Lde/gdata/mobilesecurity/scan/ScanService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/scan/ScanService;->setProgress(I)V

    .line 241
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/g;->a:Lde/gdata/mobilesecurity/scan/ScanService;

    invoke-virtual {v0, p1}, Lde/gdata/mobilesecurity/scan/ScanService;->updateStatus(Ljava/lang/String;)V

    .line 236
    return-void
.end method
