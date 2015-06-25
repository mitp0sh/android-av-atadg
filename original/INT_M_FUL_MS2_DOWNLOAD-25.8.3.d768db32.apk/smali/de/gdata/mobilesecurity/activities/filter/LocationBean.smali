.class public Lde/gdata/mobilesecurity/activities/filter/LocationBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSERT_INTO_LOCATION_TABLE:Ljava/lang/String; = "INSERT OR REPLACE INTO locations (address, longitude, latitude, radius) VALUES (?, ?, ?, ?)"

.field public static final UPDATE_LOCATION_TABLE:Ljava/lang/String; = "INSERT OR REPLACE INTO locations (id ,address, longitude, latitude, radius) VALUES (?, ?, ?, ?, ?)"


# instance fields
.field a:I

.field b:D

.field c:D

.field d:Ljava/lang/String;

.field e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;DDI)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->a:I

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->d:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->e:I

    .line 24
    iput p1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->a:I

    .line 25
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->d:Ljava/lang/String;

    .line 26
    iput-wide p3, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->b:D

    .line 27
    iput-wide p5, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->c:D

    .line 28
    iput p7, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->e:I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDI)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->a:I

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->d:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->e:I

    .line 34
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->d:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->b:D

    .line 36
    iput-wide p4, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->c:D

    .line 37
    iput p6, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->e:I

    .line 39
    return-void
.end method

.method public static insertLocationIntoDB(Landroid/content/Context;Lde/gdata/mobilesecurity/activities/filter/LocationBean;)V
    .locals 4

    .prologue
    .line 124
    const-string v0, "insertLocationIntoDB"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    if-eqz p1, :cond_0

    .line 128
    :try_start_0
    const-string v1, "INSERT OR REPLACE INTO locations (address, longitude, latitude, radius) VALUES (?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 130
    const/4 v1, 0x1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 131
    const/4 v1, 0x2

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 132
    const/4 v1, 0x3

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 133
    const/4 v1, 0x4

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmRadius()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 135
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {p1, v1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->setmId(I)V

    .line 136
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    const-string v0, "insertLocationIntoDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 146
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement INSERT OR REPLACE INTO locations (address, longitude, latitude, radius) VALUES (?, ?, ?, ?) caused an exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadLocationById(Landroid/content/Context;I)Lde/gdata/mobilesecurity/activities/filter/LocationBean;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM locations WHERE id LIKE \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v2, "loadLocationById"

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    .line 96
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const-string v1, "id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 98
    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 99
    const-string v1, "longitude"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 100
    const-string v1, "latitude"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 101
    const-string v1, "radius"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 103
    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct/range {v1 .. v8}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;-><init>(ILjava/lang/String;DDI)V

    .line 106
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 109
    :cond_0
    const-string v0, "loadLocationById"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 111
    :cond_1
    return-object v1
.end method

.method public static updateLocationIntoDB(Landroid/content/Context;Lde/gdata/mobilesecurity/activities/filter/LocationBean;)V
    .locals 4

    .prologue
    .line 150
    const-string v0, "updateLocationIntoDB"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 153
    if-eqz p1, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmId()I

    move-result v1

    if-lez v1, :cond_1

    .line 155
    const-string v1, "INSERT OR REPLACE INTO locations (id ,address, longitude, latitude, radius) VALUES (?, ?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 157
    const/4 v1, 0x1

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 158
    const/4 v1, 0x2

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 159
    const/4 v1, 0x3

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 160
    const/4 v1, 0x4

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 161
    const/4 v1, 0x5

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmRadius()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 163
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 164
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    const-string v0, "updateLocationIntoDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 177
    return-void

    .line 166
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->insertLocationIntoDB(Landroid/content/Context;Lde/gdata/mobilesecurity/activities/filter/LocationBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement INSERT OR REPLACE INTO locations (id ,address, longitude, latitude, radius) VALUES (?, ?, ?, ?, ?) caused an exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getmAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getmId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->a:I

    return v0
.end method

.method public getmLatitude()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->c:D

    return-wide v0
.end method

.method public getmLongitude()D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->b:D

    return-wide v0
.end method

.method public getmRadius()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->e:I

    return v0
.end method

.method public isInRange(Landroid/content/Context;)Z
    .locals 10

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 183
    new-instance v1, Landroid/location/Location;

    const-string v2, "LocationBean"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 185
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->getmLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 186
    invoke-static {p1}, Lde/gdata/mobilesecurity/util/MyUtil;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    float-to-double v4, v3

    iget v3, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->e:I

    int-to-double v6, v3

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " radius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 193
    :cond_0
    return v0
.end method

.method public setmAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->d:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setmId(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->a:I

    .line 79
    return-void
.end method

.method public setmLatitude(D)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->c:D

    .line 63
    return-void
.end method

.method public setmLongitude(D)V
    .locals 1

    .prologue
    .line 70
    iput-wide p1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->b:D

    .line 71
    return-void
.end method

.method public setmRadius(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->e:I

    .line 47
    return-void
.end method
