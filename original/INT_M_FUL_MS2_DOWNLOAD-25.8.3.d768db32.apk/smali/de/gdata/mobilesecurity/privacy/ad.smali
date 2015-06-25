.class Lde/gdata/mobilesecurity/privacy/ad;
.super Landroid/database/MergeCursor;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;[Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ad;->a:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-direct {p0, p2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 475
    const-string v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const-string p1, "id"

    .line 478
    :cond_0
    invoke-super {p0, p1}, Landroid/database/MergeCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
