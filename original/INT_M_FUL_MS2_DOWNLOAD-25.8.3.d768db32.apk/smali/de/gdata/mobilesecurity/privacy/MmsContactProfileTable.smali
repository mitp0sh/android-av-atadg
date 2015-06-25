.class public Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable;
.super Lde/gdata/mobilesecurity/database/Table;
.source "SourceFile"


# static fields
.field public static final NAME:Ljava/lang/String; = "mms_contact_profile"

.field private static a:[Lde/gdata/mobilesecurity/database/Column;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "mms_contact_profile"

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/database/Table;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public declared-synchronized getColumns()[Lde/gdata/mobilesecurity/database/Column;
    .locals 1

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    sget-object v0, Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    if-nez v0, :cond_0

    .line 19
    const-class v0, Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable$Columns;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable;->extractColumns(Ljava/lang/Class;)[Lde/gdata/mobilesecurity/database/Column;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    .line 21
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/privacy/MmsContactProfileTable;->a:[Lde/gdata/mobilesecurity/database/Column;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
