select * from DimProduct;

create proc p_changeReorder
as 
 begin
 if exists(select * from DimProduct
			where ReorderPoint <= 3)
	begin 
		update DimProduct set ReorderPoint = ReorderPoint + 1;
		print 'Changed the reorder point';
		end
 else
	begin
		print 'There is no reorder point lower than 4';
	end
end;

exec p_changeReorder;

alter proc p_changeReorder
as 
 begin
 if exists(select * from DimProduct
			where ReorderPoint = 4)
	begin 
		update DimProduct set ReorderPoint = 3;
		print 'Changed the reorder point';
		end
 else
	begin
		print 'There is no reorder point lower than 4';
	end
end;

exec p_changeReorder;

drop procedure p_changeReorder;
