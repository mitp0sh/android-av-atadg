.class public Lde/gdata/mobilesecurity/privacy/MmsCommunicationTable;
.super Lde/gdata/mobilesecurity/database/Table;
.source "SourceFile"


# static fields
.field public static final NAME:Ljava/lang/String; = "mms_communication"

.field private static a:[Lde/gdata/mobilesecurity/database/Column;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "mms_communication"

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/database/Table;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getColumns()[Lde/gdata/mobilesecurity/database/Column;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lde/gdata/mobilesecurity/privacy/MmsCommunicationTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    if-nez v0, :cond_0

    .line 18
    const-class v0, Lde/gdata/mobilesecurity/privacy/MmsCommunicationTable$Columns;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/MmsCommunicationTable;->extractColumns(Ljava/lang/Class;)[Lde/gdata/mobilesecurity/database/Column;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/privacy/MmsCommunicationTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    .line 20
    :cond_0
    sget-object v0, Lde/gdata/mobilesecurity/privacy/MmsCommunicationTable;->a:[Lde/gdata/mobilesecurity/database/Column;

    return-object v0
.end method
