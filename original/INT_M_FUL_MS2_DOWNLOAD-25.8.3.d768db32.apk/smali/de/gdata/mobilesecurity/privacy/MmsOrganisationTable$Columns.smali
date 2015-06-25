.class public Lde/gdata/mobilesecurity/privacy/MmsOrganisationTable$Columns;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MMS_CONTACT:Ljava/lang/String; = "mms_contact_id"
    .annotation runtime Lde/gdata/mobilesecurity/database/Column$Type;
        defaults = "unique"
        value = .enum Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "type"
    .annotation runtime Lde/gdata/mobilesecurity/database/Column$Type;
        value = .enum Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .end annotation
.end field

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
